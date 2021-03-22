## 使用组件

新建newCase.vue

Home.vue中导入， 注册
```vuejs
import newCase from './newCase.vue';

components: {
  newCase: newCase
}, 
```

在Home.vue中使用对话框来引入
```vuejs
<el-dialog title="新建用例" :visible.sync="newCaseVisible" center :append-to-body='true' :lock-scroll="false" width="50%">
  <newCase></newCase>
</el-dialog>
```
