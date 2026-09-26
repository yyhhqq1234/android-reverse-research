package com.netease.epay.sdk.card.model;

/* loaded from: classes.dex */
public class AddCardConfig {
    public boolean isAlwaysShowNameInputSecondPage;
    public boolean isShowNameFirstPage;
    public boolean isShowStepView;
    public String tipsFirstPage;
    public String titleFirstPage;
    public String titleSecondPage;
    public String titleThirdPage;
    public int type;

    private AddCardConfig(String title, String tipsFirstPage, boolean isShowStepView, boolean isAlwaysShowNameInputSecondPage) {
        this.isAlwaysShowNameInputSecondPage = false;
        this.titleThirdPage = title;
        this.titleSecondPage = title;
        this.titleFirstPage = title;
        this.tipsFirstPage = tipsFirstPage;
        this.isAlwaysShowNameInputSecondPage = isAlwaysShowNameInputSecondPage;
        this.isShowNameFirstPage = isAlwaysShowNameInputSecondPage ? false : true;
        this.isShowStepView = isShowStepView;
    }

    public static AddCardConfig getAddCardConfigByType(int type) {
        AddCardConfig addCardConfig;
        if (type == 6) {
            addCardConfig = new AddCardConfig("设置支付密码", "请添加持卡人本人的银行卡以设置密码", false, true);
        } else if (type == 7) {
            addCardConfig = new AddCardConfig("忘记支付密码", "请添加持卡人本人的银行卡以找回密码", false, true);
        } else if (type == 5) {
            addCardConfig = new AddCardConfig("身份验证", "请添加持卡人本人的银行卡以验证身份信息", true, true);
        } else {
            addCardConfig = new AddCardConfig("添加银行卡", "请添加持卡人本人的银行卡", true, false);
            addCardConfig.titleSecondPage = "填写银行卡信息";
            addCardConfig.titleThirdPage = "填写验证码";
        }
        addCardConfig.type = type;
        return addCardConfig;
    }

    public static AddCardConfig getValidateCardConfigByType(int type) {
        AddCardConfig addCardConfig;
        if (type == 6) {
            addCardConfig = new AddCardConfig("设置支付密码", "请重新绑定银行卡以设置密码", false, true);
        } else if (type == 5) {
            addCardConfig = new AddCardConfig("身份验证", "请重新绑定银行卡以验证本人身份信息", false, true);
        } else {
            addCardConfig = new AddCardConfig("忘记支付密码", "请重新绑定银行卡以找回密码", false, true);
        }
        addCardConfig.type = type;
        return addCardConfig;
    }
}
