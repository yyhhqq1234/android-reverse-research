.class Lcom/subao/common/b/q$a;
.super Ljava/lang/Object;
.source "XunyouUserStateRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/q$a$a;
    }
.end annotation


# static fields
.field private static volatile a:I


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/b/q$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x3e8

    sput v0, Lcom/subao/common/b/q$a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/b/q$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/subao/common/b/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 104
    const-class v1, Lcom/subao/common/b/q$a;

    monitor-enter v1

    .line 105
    :try_start_0
    sget v0, Lcom/subao/common/b/q$a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/subao/common/b/q$a;->a:I

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    new-instance v1, Lcom/subao/common/b/q$a$a;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/subao/common/b/q$a$a;-><init>(ILcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    monitor-enter v2

    .line 112
    :try_start_1
    iget-object v3, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    return v0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 113
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method a(I)Lcom/subao/common/b/q$a$a;
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    iget-object v3, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    monitor-enter v3

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 124
    iget-object v0, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/q$a$a;

    iget v0, v0, Lcom/subao/common/b/q$a$a;->a:I

    if-ne v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/subao/common/b/q$a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/q$a$a;

    .line 129
    :goto_1
    monitor-exit v3

    .line 130
    return-object v0

    .line 123
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
