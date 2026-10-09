.class Lcom/subao/common/n/a$b;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ProcessBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/subao/common/n/a$b;->a:Ljava/lang/ProcessBuilder;

    .line 124
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/subao/common/n/a$b;->a:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/subao/common/n/a$b;->a:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 132
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/subao/common/n/a$b;->a:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 136
    return-void
.end method
