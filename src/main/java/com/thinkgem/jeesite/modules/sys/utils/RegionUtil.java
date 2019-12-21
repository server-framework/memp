package com.thinkgem.jeesite.modules.sys.utils;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSON;
import com.thinkgem.jeesite.modules.sys.entity.Area;
import com.thinkgem.jeesite.modules.sys.entity.User;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegionUtil {

    // 两级关系
    static List<String> twoLevelArea = Arrays.asList(new String[]{"11", "12", "50", "31","81","82"});

    public static List<Area> packageRegion(String regionJson) {
        regionJson = replaceBlank(regionJson);
        Map<String, String> map = (Map<String, String>) JSON.parse(regionJson);
//        map.put("110100", "北京市");
//        map.put("120100", "天津市");
//        map.put("310100", "上海市");
//        map.put("500100", "重庆市");
        List<Area> proviceList = new ArrayList<Area>();
        List<Area> cityList = new ArrayList<Area>();
        List<Area> areaList = new ArrayList<Area>();
        Area parentAll = new Area();
        parentAll.setId("1");
        Iterator it = map.entrySet().iterator();
        User user = UserUtils.getUser();
        int i = 2;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String key = (String) entry.getKey();
            String value = (String) entry.getValue();
            Area area = new Area();
            area.setName(value);
            area.setCode(key);
            area.setCreateBy(user);
            area.setUpdateBy(user);
            area.setCreateDate(new Date());
            area.setUpdateDate(new Date());
            area.setId(i + "");
            area.setSort(Integer.valueOf(key.substring(2)));
            // 特殊的市（不按规范命名市key）格式：xx90xx 目前发现湖北和海南
            int specialKey = Integer.valueOf(key.substring(2)).intValue();
            if (StrUtil.endWith(key, "0000")) {
                area.setParent(parentAll);
                area.setParentIds(String.format("0,%s,", area.getId()));
                area.setType("1");
                proviceList.add(area);
            } else if (StrUtil.endWith(key, "100") || StrUtil.endWith(key, "200") || StrUtil.endWith(key, "300") ||
                    StrUtil.endWith(key, "400") || StrUtil.endWith(key, "500") || StrUtil.endWith(key, "600") ||
                    StrUtil.endWith(key, "700") || StrUtil.endWith(key, "800") || StrUtil.endWith(key, "900") ||
                    StrUtil.endWith(key, "1000") || StrUtil.endWith(key, "2000") || StrUtil.endWith(key, "3000") ||
                    StrUtil.endWith(key, "4000") || specialKey > 9000 || twoLevelAreaCheck(key)) {
                area.setType("2");
                cityList.add(area);
            } else {
                area.setType("3");
                areaList.add(area);
            }
            i++;
        }
        for (Area city : cityList) {
            for (Area province : proviceList) {
                if (StrUtil.equals(city.getCode().substring(0, 2), province.getCode().substring(0, 2))) {
                    city.setParent(province);
                    city.setParentIds(String.format("0,%s,%s,", province.getId(), city.getId()));
                    break;
                }
            }
        }
        for (Area area : areaList) {
            for (Area city : cityList) {
                if (StrUtil.equals(area.getCode().substring(0, 4), city.getCode().substring(0, 4)) ||
                        (StrUtil.equals("重庆市",city.getName()) && StrUtil.equals(area.getCode().substring(0, 3), city.getCode().substring(0, 3)))) {
                    area.setParent(city);
                    area.setParentIds(String.format("%s%s,", city.getParentIds(), area.getId()));
                    break;
                }
            }
        }

        List<Area> rtn = new ArrayList<Area>();
        rtn.addAll(proviceList);
        rtn.addAll(cityList);
        rtn.addAll(areaList);
        return rtn;
    }

    private static boolean twoLevelAreaCheck(String key) {
        for (String str : twoLevelArea) {
            if (StrUtil.startWith(key, str)) {
                return true;
            }
        }
        return false;
    }


    private static String replaceBlank(String str) {
        String dest = "";
        if (str != null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(str);
            dest = m.replaceAll("");
        }
        return dest;
    }
}
