package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101000652226";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCQQsdBio/c/gTSsPDF3zBtiQt/KLnLAB2K5DdMTTucsohGp1llnEf26vLnn2Qu7hFLxe47/ffOefzIsKhK6XWvzc8/r2aqyM1E6YbDOXgifCsqRcKl3zjSff6OE7rE1B5n9UMD68k8GvWbn0m3/3W5KbGopweMSsMhhcCP60cnilMA8yWA81rrDoof56F8Kr8TtPUORlmgfGjNmxXaNtJxHmPLSw/95ZD2e5A3DhJurxR91z74DH6hF9ug0NKbY+GmF56TQm/ddRdFL7QNSoQHqTxlW8VgOmhEg62fKxCxoRAm04d30c80VvJbux94WD6NpyCpb5xInXwRNbFr59TxAgMBAAECggEAOaAjPiAedZWW0Z7SnwgXrTmYORRImzmRk4C0Qit7y41ZeHey8y7pZE3X+AQoncKFcDJBhv9dNMJv4q8Gmt4FH9PjnLnxFfmeXY+3QFa9kXDuQTWamm2/of2oaJKjAasF9lr3iSJvwS23vJF1fiVyniN0jz0he74Fkmd+Uz8VrkouZ/L6SQgDS4XHeHoLxHgWny35eUTvkO86Y3mTbw1i141pLxy8/10LV4X4bHx8jfiTCQX1mwZbT4aFAevx7VJDewCLCTqpvzmfqncZSxjuuGX8iucV2B1CdHCkmS4j7+Cg7VnrcmeRUx38yrXQhPWV84UZ4hqU5PKo+r4U0DxqrQKBgQDE9yy8sNydiJIuzpckeDdWI10gSHbbxZbMB2eB7T4gbSfo8ut0LBWyOXJdcrkCprMbYmZyFvXu+tWL6UUWmH5stY8wffKPZ1FQTPB80sQNV8qiRnnDxMzCVzSSw8pgoAUHAOuwkmQzFo7KGJN3fZ9A13K+urBeMq6vm0XgROmhvwKBgQC7f6o0efk5XYHzRLRWbFJaCIUy0rbtxmmLk3+jcsRmM2g/1apd46Xueg7DUqn9igi8ANKcnvHKGUJ98my1Kdzzfp59nUAfkzzo7kPab3SygDhczHXxYdH5L9fcicahhIjaASiEwrkTYczkIFscMXanAHbsbZzwOzHLTYeyRIXVTwKBgQCMx4ZoT5k/1690WSDaZjpXDOuw+VpK9s0zg09OJD21e499BrOX0zKmsjy14huuc2us9QX4IcUiTJJ5b/97iP9Dv/laVYsbSGNsG7H/5b1PNCKXHfxGGtGnTiE7jUmHCpjNSrErAVcw1Ly2Yh5014sOE2/mNxV8HomQ5lBpXZgHjQKBgHoxCuVEEE14SPYW8kfYNBsErnmepSR0R9h0eZw1cRUBr5DaWDrz3vF5jiFwv+PBj0umZZs4Ym7I43JdCMdPzvTIsdU/I8jwFaPfk0zJkg26TgD8Jmj2zPZOXakWCOK+EsmwM43BsQeWlwacp4PKIH9ZaCdQkBRnH15U2ngs++M1AoGAX7curHQqrGq+6B8p+DrG6bB7c0WlYsnbskxZbIZOtUDwmWrFYpU7z1hrHhzZEBC6FMH4y+vJM1kwAehaWSRoSx43xs9YNREyh71wWIGt0c5zSw351rSps1lIMq51cqpOjGKFcAqr5MNXW67fPhBvSdqNtSr6Y7CMISwzMqB1j84=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnEqYjkgW/T6sSUMzkrXk2+flNHX7vRmeWx9qwGJW50HRfLb9NzXXdtV/apmilxw87n9Mk3/z4NTn9Z6u3EsFjH6nl7pMQkhCqdB3dG9CmAyjdVmmWeItqE7x5DuaKMex3z8O80gMUGBhH1bCu/HyuclegtOMIQ88FjHwN1gmrUWRWP44TVjfPMtuc3ucv9jLenOvjxJYgg/qiSZ8AgjScqoLDJ+pJdsIx0yoagQtNQBvs+wwJpnqfBVxW2u6qvv1msMmAiat9qYGih7WTBdvPpl070SL2rSUi0YI9TR47Kf59K05rnGqVSrdY+NCc348pEownaWkZUFInUeaeJzorwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/web_war_exploded/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/web_war_exploded/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

