.class public Lcom/netease/epay/sdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

.field public static final SHARED_ST_LIC_FILE_MD5:Ljava/lang/String; = "epaysdk_st_lic_file_mdwu"

.field public static final SHARED_WALLET_NEED_RED_PAPER:Ljava/lang/String; = "epaysdk_wallet_need_redpaper_inter"

.field public static final WALLET_REFRESH:Ljava/lang/String; = "wallet_refresh"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/netease/epay/sdk/Constants$1;

    invoke-direct {v0}, Lcom/netease/epay/sdk/Constants$1;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
