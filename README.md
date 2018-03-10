1. 此為Maven Web專案
2. 請於JVM新增參數 	 -DrunTimeEnvironment=dev or uat or prod
3. 上述環境參數值必須對應src/main/resources/properties/的目錄名稱
4. 使用RunTimeEnvironment及ServletContext物件請由GlobalEnviron中取得
5. 取得Properties請統一使用PropertyUtil.getProperties(String fileName)
6. 常數存取請使用列舉enum