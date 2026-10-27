Feature: 邮箱注册账号

  作为访客，我想要用邮箱注册账号，以便开始提问

  Scenario: 快乐路径 - 使用有效邮箱注册成功
    Given 访客在注册页面
    When 访客填写邮箱 "alice@example.com"、密码 "Passw0rd"、昵称 "Alice"
    And 访客点击"注册"按钮
    Then 系统创建账号并返回 201
    And 页面跳转到登录页并提示"注册成功"

  Scenario: 边界路径 - 密码长度恰好为最小长度 8 位
    Given 访客在注册页面
    When 访客填写邮箱 "bob@example.com"、密码 "12345678"、昵称 "Bob"
    Then 系统接受该密码并创建账号

  Scenario: 异常路径 - 邮箱已被注册
    Given 邮箱 "alice@example.com" 已存在
    When 访客使用该邮箱提交注册
    Then 系统返回 409
    And 提示"该邮箱已被注册"
    And 不创建新账号
