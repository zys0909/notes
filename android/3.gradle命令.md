- `gradlew -q app:dependencies `
  - 查看app模块的依赖树	
  -  `gradlew app:dependencies --configuration implementation `  限定implementation 

- `gradle build --profile`
  
- Profile 工具会在 `根目录/build/reports/profile` 中生成 HTML 格式的分析文件的分析文件
  
- `gradlew --profile --recompile-scripts --offline --rerun-tasks build`

  - `profile` 		  --> 开启性能检测

    `recompile-scripts` --> 不使用缓存，直接重新编译脚本

    `offline` 		  --> 启用离线编译模式

    `return-task` 	  --> 运行所有 gradle task 并忽略所有优化

- 

