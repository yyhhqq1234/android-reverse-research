.class synthetic Lcom/netease/httpdns/HttpDnsService$9;
.super Ljava/lang/Object;
.source "HttpDnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/httpdns/HttpDnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$httpdns$module$IpStackType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 579
    invoke-static {}, Lcom/netease/httpdns/module/IpStackType;->values()[Lcom/netease/httpdns/module/IpStackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/httpdns/HttpDnsService$9;->$SwitchMap$com$netease$httpdns$module$IpStackType:[I

    :try_start_0
    sget-object v0, Lcom/netease/httpdns/HttpDnsService$9;->$SwitchMap$com$netease$httpdns$module$IpStackType:[I

    sget-object v1, Lcom/netease/httpdns/module/IpStackType;->NETWORK_IPV4:Lcom/netease/httpdns/module/IpStackType;

    invoke-virtual {v1}, Lcom/netease/httpdns/module/IpStackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/httpdns/HttpDnsService$9;->$SwitchMap$com$netease$httpdns$module$IpStackType:[I

    sget-object v1, Lcom/netease/httpdns/module/IpStackType;->NETWORK_IPV6:Lcom/netease/httpdns/module/IpStackType;

    invoke-virtual {v1}, Lcom/netease/httpdns/module/IpStackType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/netease/httpdns/HttpDnsService$9;->$SwitchMap$com$netease$httpdns$module$IpStackType:[I

    sget-object v1, Lcom/netease/httpdns/module/IpStackType;->NETWORK_IPV4_AND_IPV6:Lcom/netease/httpdns/module/IpStackType;

    invoke-virtual {v1}, Lcom/netease/httpdns/module/IpStackType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
