.class public Lcom/subao/common/e/q$b;
.super Ljava/lang/Object;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const-string v0, "key_portal_misc"

    sput-object v0, Lcom/subao/common/e/q$b;->a:Ljava/lang/String;

    return-void
.end method
