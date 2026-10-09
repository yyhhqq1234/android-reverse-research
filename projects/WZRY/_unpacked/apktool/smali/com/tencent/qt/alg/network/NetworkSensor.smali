.class public interface abstract Lcom/tencent/qt/alg/network/NetworkSensor;
.super Ljava/lang/Object;
.source "NetworkSensor.java"


# static fields
.field public static final INVALID_ACCESS_POINT:Ljava/lang/String; = "None"

.field public static final ISP_CHINA_MOBILE:I = 0x1

.field public static final ISP_CHINA_TELECOM:I = 0x3

.field public static final ISP_CHINA_UNICOM:I = 0x2

.field public static final ISP_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x45f


# virtual methods
.method public abstract getAccessPoint()Ljava/lang/String;
.end method

.method public abstract getISP()I
.end method

.method public abstract getIp()Ljava/net/InetAddress;
.end method

.method public abstract getNetworkDetailType()I
.end method

.method public abstract getNetworkType()Ljava/lang/String;
.end method

.method public abstract getProxy()Ljava/net/InetSocketAddress;
.end method

.method public abstract getService()Ljava/lang/String;
.end method

.method public abstract hasAvailableNetwork()Z
.end method
