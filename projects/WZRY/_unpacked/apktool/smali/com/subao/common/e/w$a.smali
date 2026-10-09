.class public Lcom/subao/common/e/w$a;
.super Ljava/lang/Object;
.source "InstalledApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/pm/ApplicationInfo;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/subao/common/e/w$a;->a:Landroid/content/pm/ApplicationInfo;

    .line 110
    iput-object p2, p0, Lcom/subao/common/e/w$a;->b:Ljava/lang/String;

    .line 111
    iput-boolean p3, p0, Lcom/subao/common/e/w$a;->c:Z

    .line 112
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/subao/common/e/w$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/subao/common/e/w$a;->a:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/subao/common/e/w$a;->b:Ljava/lang/String;

    return-object v0
.end method
