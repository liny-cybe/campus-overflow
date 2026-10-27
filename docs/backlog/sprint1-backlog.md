# Sprint 1 Backlog

- 团队：第 11 组
- Sprint：Sprint 1（第 3 周）
- 周期：2026-10-27 ~ 2026-11-07
- 团队 Velocity：18 SP（首次冲刺，以承诺 Story Point 为基线）
- 承诺范围：6 条故事，18 SP

## 一、Sprint 目标

把 Walking Skeleton 跑通一条完整链路：邮箱注册 → 浏览问题列表 → 发布问题 → 回答问题 → 评论回答 → 获得声誉分。

## 二、承诺故事

| 故事ID | 故事 | SP | 故事责任人 |
| --- | --- | --- | --- |
| US-01 | 用邮箱注册账号 | 3 | 曹文 |
| US-05 | 浏览问题列表 | 3 | 向宇航 |
| US-09 | 发布问题（标题+正文+标签） | 3 | 曹文 |
| US-13 | 回答问题 | 3 | 曹文 |
| US-17 | 评论回答 | 3 | 向宇航 |
| US-20 | 通过贡献获得声誉分 | 3 | 曹文 |
| 合计 | 6 条 | 18 SP | — |

## 三、任务拆分与责任人

| 任务ID | 所属故事 | 任务 | 责任人 | 预估工时 | 状态 |
| --- | --- | --- | --- | --- | --- |
| T-01 | US-01 | 建 user 表与 Flyway 迁移脚本 | 鲍欣宇 | 2h | To Do |
| T-02 | US-01 | 实现 POST /api/v1/auth/register（RegisterCommand + User 聚合） | 曹文 | 4h | To Do |
| T-03 | US-01 | 前端注册页与表单校验 | 杨杰 | 4h | To Do |
| T-04 | US-05 | 实现 GET /api/v1/questions 分页列表 | 向宇航 | 4h | To Do |
| T-05 | US-05 | 前端问题列表页 QuestionListPage | 杨杰 | 4h | To Do |
| T-06 | US-05 | 列表接口测试（分页、空列表） | 鲍欣宇 | 2h | To Do |
| T-07 | US-09 | 实现 POST /api/v1/questions（Question 聚合不变式） | 曹文 | 4h | To Do |
| T-08 | US-09 | 前端发布问题页 NewQuestionPage | 杨杰 | 4h | To Do |
| T-09 | US-09 | 发布接口测试（201 / 400 / 401） | 鲍欣宇 | 2h | To Do |
| T-10 | US-13 | 实现 POST /api/v1/questions/{id}/answers | 曹文 | 4h | To Do |
| T-11 | US-13 | 前端问题详情页回答区 | 杨杰 | 4h | To Do |
| T-12 | US-13 | 回答接口测试（201 / 400） | 鲍欣宇 | 2h | To Do |
| T-13 | US-17 | 实现 POST /api/v1/answers/{id}/comments | 向宇航 | 4h | To Do |
| T-14 | US-17 | 前端评论组件 | 杨杰 | 3h | To Do |
| T-15 | US-17 | 评论接口测试（201 / 400） | 鲍欣宇 | 2h | To Do |
| T-16 | US-20 | 声誉规则（采纳 +10）与领域事件 | 曹文 | 4h | To Do |
| T-17 | US-20 | 前端个人声誉展示 | 杨杰 | 3h | To Do |
| T-18 | US-20 | 声誉规则单元测试（加分 / 不低于 0 / 幂等） | 鲍欣宇 | 2h | To Do |
| T-19 | 跨故事 | 按 8 个 .feature 走查验收 6 条故事 | 林纹宇 | 2h | To Do |
| T-20 | 跨故事 | CI 冒烟：6 个接口纳入流水线 | 向宇航 | 2h | To Do |

## 四、容量分配

| 成员 | 角色 | 任务数 | 预估工时 |
| --- | --- | --- | --- |
| 曹文 | Developer | 4（T-02、T-07、T-10、T-16） | 16h |
| 杨杰 | Developer | 6（T-03、T-05、T-08、T-11、T-14、T-17） | 22h |
| 鲍欣宇 | SM | 6（T-01、T-06、T-09、T-12、T-15、T-18） | 12h |
| 向宇航 | SM | 3（T-04、T-13、T-20） | 10h |
| 林纹宇 | PO | 1（T-19） | 2h |
| 合计 | — | 20 | 62h |

## 五、看板状态

6 张故事卡（US-01、US-05、US-09、US-13、US-17、US-20）全部位于 GitHub Projects 的 **To Do** 列，卡片已设置 Assignees 与任务清单。
