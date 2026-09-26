.class public Lcom/netease/mpay/skin/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/skin/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/res/AssetManager;

.field public d:Landroid/content/res/Resources;

.field public e:Ldalvik/system/DexClassLoader;

.field final synthetic f:Lcom/netease/mpay/skin/g;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/skin/g;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/skin/g$a;->f:Lcom/netease/mpay/skin/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
