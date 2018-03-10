package com.ray.tool;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.ray.constant.CommonConstant;

public class PropertyUtil {

	private static Map<String, Properties> propertiesMap;

	/*
	 * 取得properties物件
	 * 
	 * @param properties檔名(Test.properties)
	 * 
	 * @return Properties
	 * 
	 */
	public static Properties getProperties(String propFileName) throws FileNotFoundException {

		if (propertiesMap == null)
			refresh();

		if (propertiesMap.containsKey(propFileName))
			return propertiesMap.get(propFileName);
		else
			throw new FileNotFoundException();
	}

	/* 可供外部呼叫重新將properties載入記憶體　*/
	public static void refresh() {
		
		
		GlobalEnviron globalEnviron = GlobalEnviron.getInstance();

		String realPath = globalEnviron.getServletContext().getRealPath(CommonConstant.PROPERTIES_PATH.getDescription()
				+ globalEnviron.getRunTimeEnvironment().getDescription());


		propertiesMap = new HashMap<String, Properties>();

		File[] files = new File(realPath).listFiles();
		Properties properties;
		try {

			for (File file : files) {
				properties = new Properties();
				properties.load(new FileInputStream(file));
				propertiesMap.put(file.getName(), properties);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
