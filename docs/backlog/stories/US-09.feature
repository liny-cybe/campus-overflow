Feature: 发布问题

  作为用户，我想要发布问题（标题+正文+标签），以便求助

  Scenario: 快乐路径 - 登录用户发布问题成功
    Given 用户 "曹文" 已登录
    When 用户提交标题 "Spring Boot 如何配置多数据源？"、正文 "两个库需要读写分离"、标签 "spring-boot"
    Then 系统返回 201 并生成问题 ID
    And 页面跳转到该问题详情页

  Scenario: 边界路径 - 标题长度恰好为上限 100 字
    Given 用户 "曹文" 已登录
    When 用户提交长度为 100 字的标题
    Then 系统接受该标题并创建问题

  Scenario: 异常路径 - 未登录用户发布问题
    Given 访客未登录
    When 访客提交一条问题
    Then 系统返回 401
    And 提示"请先登录"
    And 不创建问题
