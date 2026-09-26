.class public Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;
.super Ljava/lang/Object;
.source "HomeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/model/HomeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromoteLimitDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto$Code;
    }
.end annotation


# static fields
.field public static final FACE_PROMOTE_AUDITING:Ljava/lang/String; = "FACE_PROMOTE_AUDITING"

.field public static final FACE_PROMOTE_CAN:Ljava/lang/String; = "FACE_PROMOTE_CAN"

.field public static final FACE_PROMOTE_LIMIT:Ljava/lang/String; = "FACE_PROMOTE_LIMIT"


# instance fields
.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
