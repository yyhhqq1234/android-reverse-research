.class final Lcom/tencent/mna/MNAPlatformImpl$1;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Ljava/lang/String;ZIZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->c:Z

    iput p4, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->d:I

    iput-boolean p5, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->e:Z

    iput-boolean p6, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->f:Z

    iput-object p7, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->c:Z

    iget v3, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->d:I

    iget-boolean v4, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->e:Z

    iget-boolean v5, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->f:Z

    iget-object v6, p0, Lcom/tencent/mna/MNAPlatformImpl$1;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V

    .line 74
    return-void
.end method
