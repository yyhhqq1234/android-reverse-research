.class public interface abstract Lcom/applovin/impl/a7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a7$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/applovin/impl/a7;

.field public static final b:Lcom/applovin/impl/a7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/a7$a;

    invoke-direct {v0}, Lcom/applovin/impl/a7$a;-><init>()V

    sput-object v0, Lcom/applovin/impl/a7;->a:Lcom/applovin/impl/a7;

    .line 32
    sput-object v0, Lcom/applovin/impl/a7;->b:Lcom/applovin/impl/a7;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/applovin/impl/e9;)I
.end method

.method public abstract a(Landroid/os/Looper;Lcom/applovin/impl/z6$a;Lcom/applovin/impl/e9;)Lcom/applovin/impl/y6;
.end method

.method public abstract a()V
.end method

.method public abstract b(Landroid/os/Looper;Lcom/applovin/impl/z6$a;Lcom/applovin/impl/e9;)Lcom/applovin/impl/a7$b;
.end method

.method public abstract b()V
.end method
