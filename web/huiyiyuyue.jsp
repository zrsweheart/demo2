<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会议预约</title>
</head>
<body>
<form action="huiyiyuyue`.jsp" method="get">
    <table align="center" border="1" width="500">
        <tr>
            <td>会议室主题： </td>
            <td>

                <label>
                    <input type="text" name="theme" />
                </label>
            </td>
        </tr>
        <tr>
            <td>会议内容: </td>
            <td>
                <label>
                    <input type="text" name="neirong" />
                </label>
            </td>
        </tr>
        <tr>
            <td>会议室开始时间: </td>
            <td>
                <label>
                    <input type="text" name="begin" />
                </label>
            </td>
        </tr>
        <tr>
            <td>会议结束时间： </td>
            <td>
                <label>
                    <input type="text" name="end" />
                </label>
            </td>
        </tr>
        <tr>
            <td>参会人数： </td>
            <td>
                <label>
                    <input type="text" name="canhuiren" />
                </label>
            </td>
        </tr>
        <tr>
            <td>参会人员： </td>
            <td>
                <label>
                    <input type="text" name="people" />
                </label>
            </td>
        </tr>
        <tr>
            <td>预约会议室： </td>
            <td>
                <label>
                    <input type="text" name="room" />
                </label>
            </td>
        </tr>

        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交" />
                <input type="reset" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>

</html>
