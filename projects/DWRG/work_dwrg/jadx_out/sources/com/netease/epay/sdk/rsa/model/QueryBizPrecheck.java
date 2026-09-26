package com.netease.epay.sdk.rsa.model;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class QueryBizPrecheck {
    public ArrayList<PreCheck> preCheckList;

    /* loaded from: classes.dex */
    public static class PreCheck {
        public String accountName;
        public String bindMobile;
        public String checkType;
    }
}
