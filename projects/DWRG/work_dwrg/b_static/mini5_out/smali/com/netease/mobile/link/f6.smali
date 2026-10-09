.class public final Lcom/netease/mobile/link/f6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/f6$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mobile/link/f6;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mobile/link/f6;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mobile/link/f6;->p:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/netease/mobile/link/f6$a;
    .locals 9

    new-instance v8, Lcom/netease/mobile/link/f6$a;

    iget-object v1, p0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mobile/link/f6;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mobile/link/f6;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mobile/link/f6;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/netease/mobile/link/f6;->f:Z

    iget-object v7, p0, Lcom/netease/mobile/link/f6;->g:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/mobile/link/f6$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v8
.end method
