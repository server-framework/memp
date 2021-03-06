package com.thinkgem.jeesite.test;

import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSON;
import com.thinkgem.jeesite.modules.sys.entity.Area;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {

    public static void main(String[] args) {
        String result = test("E:\\workspaces\\memp\\src\\main\\resources\\region.json");
        result = replaceBlank(result);
        Map<String, String> map = (Map<String, String>) JSON.parse(result);
        map.put("110100","北京市");
        map.put("120100","天津市");
        map.put("310100","上海市");
        map.put("500100","重庆市");
        List<Area> proviceList = new ArrayList<Area>();
        List<Area> cityList = new ArrayList<Area>();
        List<Area> areaList = new ArrayList<Area>();
        Area parentAll = new Area();
        parentAll.setId("1");
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String key = (String) entry.getKey();
            String value = (String) entry.getValue();
            Area area = new Area();
            area.setName(value);
            area.setCode(key);
            area.setId(UUID.randomUUID().toString());
            if (StrUtil.endWith(key, "0000")) {
                area.setParent(parentAll);
                area.setParentIds(String.format("0,%s,", area.getId()));
                area.setSort(Integer.valueOf(key.substring(0, 2)));
                area.setType("1");
                proviceList.add(area);
            } else if (StrUtil.endWith(key, "100") || StrUtil.endWith(key, "200") || StrUtil.endWith(key, "300") ||
                    StrUtil.endWith(key, "400") || StrUtil.endWith(key, "500") || StrUtil.endWith(key, "600") ||
                    StrUtil.endWith(key, "700") || StrUtil.endWith(key, "800") || StrUtil.endWith(key, "900") ||
                    StrUtil.endWith(key, "1000")) {
                area.setType("2");
                if (StrUtil.endWith(key, "1000")) {
                    area.setSort(Integer.valueOf(key.substring(2)));
                } else {
                    area.setSort(Integer.valueOf(key.substring(3)));
                }
                cityList.add(area);
            } else {
                area.setType("3");
                areaList.add(area);
            }
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
                if (StrUtil.equals(area.getCode().substring(0, 4), city.getCode().substring(0, 4))) {
                    area.setParent(city);
                    area.setParentIds(String.format("%s%s,",city.getParentIds(),area.getId()));
                    break;
                }
            }
        }
        System.out.println(proviceList);
        System.out.println(cityList);
        System.out.println(areaList);
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

    private static String test(String path) {
        String str = "";
        File file = new File(path);
        try {
            FileInputStream in = new FileInputStream(file);
            // size 为字串的长度 ，这里一次性读完
            int size = in.available();
            byte[] buffer = new byte[size];
            in.read(buffer);
            in.close();
            str = new String(buffer, "utf-8");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return str;
    }
}
