.class public interface abstract Lcom/subao/common/n/d$a;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/subao/common/n/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/subao/common/n/d$a$1;

    invoke-direct {v0}, Lcom/subao/common/n/d$a$1;-><init>()V

    sput-object v0, Lcom/subao/common/n/d$a;->a:Lcom/subao/common/n/d$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/io/Reader;
.end method

.method public abstract c(Ljava/lang/String;)Ljava/io/InputStream;
.end method
