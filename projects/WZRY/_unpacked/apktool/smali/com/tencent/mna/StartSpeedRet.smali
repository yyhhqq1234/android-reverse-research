.class public Lcom/tencent/mna/StartSpeedRet;
.super Ljava/lang/Object;
.source "StartSpeedRet.java"


# static fields
.field public static final SPEED_AB_B:I = 0xa

.field public static final SPEED_AB_B_DESC:Ljava/lang/String; = "AB\u6d4b\u8bd5\u9009\u62e9\u4e0d\u52a0\u901f"

.field public static final SPEED_CONTROLDNSFAILED:I = -0x8

.field public static final SPEED_CONTROLDNSFAILED_DESC:Ljava/lang/String; = "\u4e2d\u63a7\u57df\u540dDNS\u8bf7\u6c42\u5931\u8d25"

.field public static final SPEED_CONTROLFAILED:I = -0x3

.field public static final SPEED_CONTROLFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u4e2d\u63a7\u5931\u8d25"

.field public static final SPEED_DNSFAILED:I = -0x6

.field public static final SPEED_DNSFAILED_DESC:Ljava/lang/String; = "GameServer DNS\u8bf7\u6c42\u5931\u8d25"

.field public static final SPEED_EXCEPTION:I = -0x192

.field public static final SPEED_EXCEPTION_DESC:Ljava/lang/String; = "\u52a0\u901f\u5f02\u5e38"

.field public static final SPEED_FORCE_DIRECT:I = -0x10

.field public static final SPEED_FORCE_DIRECT_DESC:Ljava/lang/String; = "\u5f3a\u5236\u76f4\u8fde"

.field public static final SPEED_GETACCELERATORFAILED:I = -0x191

.field public static final SPEED_GETACCELERATORFAILED_DESC:Ljava/lang/String; = "\u83b7\u53d6\u52a0\u901f\u534f\u8bae\u5931\u8d25"

.field public static final SPEED_HOOKFAILED:I = -0x5

.field public static final SPEED_HOOKFAILED_DESC:Ljava/lang/String; = "hook\u5931\u8d25"

.field public static final SPEED_HOOKNOTSUPPORT:I = -0xd

.field public static final SPEED_HOOKNOTSUPPORT_DESC:Ljava/lang/String; = "hook\u4e0d\u652f\u6301"

.field public static final SPEED_JVMFAILED:I = -0x1

.field public static final SPEED_JVMFAILED_DESC:Ljava/lang/String; = "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

.field public static final SPEED_LOADFAILED:I = -0x7

.field public static final SPEED_LOADFAILED_DESC:Ljava/lang/String; = "\u6ca1\u6709\u6210\u529f\u52a0\u8f7dso\u5e93"

.field public static final SPEED_MASTERFAILED:I = -0xb

.field public static final SPEED_MASTERFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u8c03\u5ea6\u5931\u8d25"

.field public static final SPEED_NEGFAILED:I = -0xc

.field public static final SPEED_NEGFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u534f\u5546\u5931\u8d25"

.field public static final SPEED_NONEED:I = 0x2

.field public static final SPEED_NONEED_DESC:Ljava/lang/String; = "\u65e0\u9700\u5f00\u542f\u52a0\u901f"

.field public static final SPEED_NONETOR2G:I = -0x2

.field public static final SPEED_NONETOR2G_DESC:Ljava/lang/String; = "Unknown/2G\u6216\u8005\u65e0\u7f51\u7edc"

.field public static final SPEED_NOTREACH:I = -0x4

.field public static final SPEED_NOTREACH_DESC:Ljava/lang/String; = "\u672a\u8fbe\u5230\u52a0\u901f\u6761\u4ef6"

.field public static final SPEED_STARTING:I = 0x1

.field public static final SPEED_STARTING_DESC:Ljava/lang/String; = "\u6b63\u5728\u6267\u884cstartSpeed"

.field public static final SPEED_STARTSPEEDTESTERTIMEOUT:I = -0xa

.field public static final SPEED_STARTSPEEDTESTERTIMEOUT_DESC:Ljava/lang/String; = "startSpeed\u6d4b\u901f\u9636\u6bb5\u8d85\u65f6"

.field public static final SPEED_STARTSPEEDTREQTIMEOUT:I = -0x9

.field public static final SPEED_STARTSPEEDTREQTIMEOUT_DESC:Ljava/lang/String; = "startSpeed\u8bf7\u6c42\u9636\u6bb5\u8d85\u65f6"

.field public static final SPEED_SUCCEED:I = 0x0

.field public static final SPEED_SUCCEED_DESC:Ljava/lang/String; = "\u6210\u529f"

.field public static final SPEED_THROWABLE:I = -0x193

.field public static final SPEED_THROWABLE_DESC:Ljava/lang/String; = "\u52a0\u901f\u9519\u8bef"


# instance fields
.field public desc:Ljava/lang/String;

.field public flag:I

.field public htype:I

.field public vip:Ljava/lang/String;

.field public vport:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 80
    const/4 v4, -0x1

    const-string/jumbo v5, "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    .line 77
    const-string/jumbo v0, "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

    iput-object v0, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/tencent/mna/StartSpeedRet;->vip:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/tencent/mna/StartSpeedRet;->vport:I

    .line 86
    iput p3, p0, Lcom/tencent/mna/StartSpeedRet;->htype:I

    .line 87
    iput p4, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    .line 88
    iput-object p5, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static getSpeedDesc(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    .line 121
    sparse-switch p0, :sswitch_data_0

    .line 185
    :goto_0
    return-object v0

    .line 123
    :sswitch_0
    const-string v0, "AB\u6d4b\u8bd5\u9009\u62e9\u4e0d\u52a0\u901f"

    goto :goto_0

    .line 126
    :sswitch_1
    const-string/jumbo v0, "\u65e0\u9700\u5f00\u542f\u52a0\u901f"

    goto :goto_0

    .line 129
    :sswitch_2
    const-string/jumbo v0, "\u6b63\u5728\u6267\u884cstartSpeed"

    goto :goto_0

    .line 132
    :sswitch_3
    const-string/jumbo v0, "\u6210\u529f"

    goto :goto_0

    .line 135
    :sswitch_4
    const-string/jumbo v0, "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

    goto :goto_0

    .line 138
    :sswitch_5
    const-string v0, "Unknown/2G\u6216\u8005\u65e0\u7f51\u7edc"

    goto :goto_0

    .line 141
    :sswitch_6
    const-string/jumbo v0, "\u8bf7\u6c42\u4e2d\u63a7\u5931\u8d25"

    goto :goto_0

    .line 144
    :sswitch_7
    const-string/jumbo v0, "\u672a\u8fbe\u5230\u52a0\u901f\u6761\u4ef6"

    goto :goto_0

    .line 147
    :sswitch_8
    const-string v0, "hook\u5931\u8d25"

    goto :goto_0

    .line 150
    :sswitch_9
    const-string v0, "GameServer DNS\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    .line 153
    :sswitch_a
    const-string/jumbo v0, "\u6ca1\u6709\u6210\u529f\u52a0\u8f7dso\u5e93"

    goto :goto_0

    .line 156
    :sswitch_b
    const-string/jumbo v0, "\u4e2d\u63a7\u57df\u540dDNS\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    .line 159
    :sswitch_c
    const-string v0, "startSpeed\u8bf7\u6c42\u9636\u6bb5\u8d85\u65f6"

    goto :goto_0

    .line 162
    :sswitch_d
    const-string v0, "startSpeed\u6d4b\u901f\u9636\u6bb5\u8d85\u65f6"

    goto :goto_0

    .line 165
    :sswitch_e
    const-string/jumbo v0, "\u8bf7\u6c42\u8c03\u5ea6\u5931\u8d25"

    goto :goto_0

    .line 168
    :sswitch_f
    const-string/jumbo v0, "\u8bf7\u6c42\u534f\u5546\u5931\u8d25"

    goto :goto_0

    .line 171
    :sswitch_10
    const-string v0, "hook\u4e0d\u652f\u6301"

    goto :goto_0

    .line 174
    :sswitch_11
    const-string/jumbo v0, "\u83b7\u53d6\u52a0\u901f\u534f\u8bae\u5931\u8d25"

    goto :goto_0

    .line 177
    :sswitch_12
    const-string/jumbo v0, "\u52a0\u901f\u5f02\u5e38"

    goto :goto_0

    .line 180
    :sswitch_13
    const-string/jumbo v0, "\u52a0\u901f\u9519\u8bef"

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        -0x193 -> :sswitch_13
        -0x192 -> :sswitch_12
        -0x191 -> :sswitch_11
        -0xd -> :sswitch_10
        -0xc -> :sswitch_f
        -0xb -> :sswitch_e
        -0xa -> :sswitch_d
        -0x9 -> :sswitch_c
        -0x8 -> :sswitch_b
        -0x7 -> :sswitch_a
        -0x6 -> :sswitch_9
        -0x5 -> :sswitch_8
        -0x4 -> :sswitch_7
        -0x3 -> :sswitch_6
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCanHook(I)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x191

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    const/16 v0, -0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNegotiateForwardTunnelSucceed(I)Z
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x191

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, -0xb

    if-eq p0, v0, :cond_0

    const/16 v0, -0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRequestControlSucceed(I)Z
    .locals 1

    .prologue
    .line 92
    const/16 v0, -0x192

    if-eq p0, v0, :cond_0

    const/16 v0, -0x193

    if-eq p0, v0, :cond_0

    const/4 v0, -0x7

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpeedSucceed(I)Z
    .locals 1

    .prologue
    .line 116
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
