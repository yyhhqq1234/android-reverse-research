.class public Lcom/subao/common/e/c;
.super Ljava/lang/Object;
.source "AccelGameMap.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/Locale;


# instance fields
.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const/16 v0, 0x63

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notification"

    aput-object v1, v0, v3

    const-string v1, "pps"

    aput-object v1, v0, v4

    const-string v1, "pptv"

    aput-object v1, v0, v5

    const-string/jumbo v1, "theme"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5b89\u88c5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u516b\u95e8\u795e\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u767e\u5b9d\u7bb1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u4f34\u4fa3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u5b9d\u5178"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u5907\u4efd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u5fc5\u5907"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u58c1\u7eb8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u53d8\u901f"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u8868\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u8865\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u63d2\u4ef6"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u67e5\u8be2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u67e5\u8be2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u51fa\u62db\u8868"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u6625\u8282\u795e\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u7b54\u9898"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u5927\u5168"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u5927\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u5355\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u52a8\u6001"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u7ffb\u56fe"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u8f85\u52a9"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u8f85\u52a9"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u6539\u540d"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u5de5\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "\u653b\u7565"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "\u558a\u8bdd"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u5408\u6210\u8868"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u5408\u96c6"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\u76d2\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u7ea2\u5305\u795e\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u753b\u62a5"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\u96c6\u5e02"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "\u8ba1\u7b97"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "\u6280\u5de7"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u8a08\u7b97"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u52a0\u901f"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u811a\u672c"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u89e3\u8bf4"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "\u7cbe\u9009"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "\u5267\u573a"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "\u5feb\u95ee"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "\u8fde\u62db\u8868"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "\u8bba\u575b"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "\u6f2b\u753b"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "\u79d8\u7c4d"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "\u6a21\u62df\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "\u9b54\u76d2"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "\u914d\u88c5\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "\u62fc\u56fe"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "\u542f\u52a8\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "\u5168\u96c6"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u793e\u533a"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u89c6\u9891"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u89c6\u8baf"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u624b\u518c"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "\u5237\u5f00\u5c40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "\u5237\u9b54"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "\u9501\u5c4f"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "\u53f0\u8bcd"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "\u7279\u8f91"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "\u5934\u6761"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "\u56fe\u96c6"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "\u56fe\u9274"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "\u5716\u9451"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "\u5916\u6302"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "\u7cfb\u5217"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u5c0f\u8bf4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "\u5c0f\u667a"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u4fee\u6539"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u4e00\u952e"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "\u82f1\u96c4\u5e2e"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "\u82f1\u96c4\u699c"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "\u6e38\u620f\u76d2"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "\u6e38\u620f\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "\u638c\u6e38\u5b9d"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "\u7167\u76f8"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "\u76f4\u64ad"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "\u6307\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "\u5236\u4f5c\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "\u4e3b\u9898"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u52a9\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "\u52a9\u624b"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "\u6293\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "\u8ffd\u5267"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "\u684c\u9762"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "\u8d44\u6599"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "\u8d44\u8baf"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "\u8cc7\u6599"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "\u4f5c\u5f0a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/e/c;->a:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\u638c\u4e0a\u82f1\u96c4\u8054\u76df"

    aput-object v1, v0, v3

    sput-object v0, Lcom/subao/common/e/c;->b:[Ljava/lang/String;

    .line 43
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.kugou.android"

    aput-object v1, v0, v3

    const-string v1, "com.huluxia.mctool"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.qt.sns"

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/e/c;->c:[Ljava/lang/String;

    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/subao/common/e/c;->d:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    .line 86
    :cond_1
    return-void

    .line 81
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/b;

    .line 83
    iget-object v2, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    sget-object v4, Lcom/subao/common/e/c;->d:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-object v2, Lcom/subao/common/e/c;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/e/b;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 162
    :cond_1
    :goto_0
    return-object v0

    .line 109
    :cond_2
    invoke-static {p2}, Lcom/subao/common/e/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 110
    goto :goto_0

    .line 114
    :cond_3
    invoke-static {p1}, Lcom/subao/common/e/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    .line 115
    goto :goto_0

    .line 119
    :cond_4
    sget-object v0, Lcom/subao/common/e/c;->d:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/b;

    .line 124
    if-nez v0, :cond_1

    .line 130
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    move-object v0, v2

    .line 131
    goto :goto_0

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/subao/common/e/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 139
    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/b;

    .line 144
    iget-boolean v5, v0, Lcom/subao/common/e/b;->d:Z

    if-nez v5, :cond_7

    .line 148
    invoke-virtual {v0}, Lcom/subao/common/e/b;->b()Z

    move-result v5

    if-nez v5, :cond_7

    .line 151
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 152
    invoke-virtual {p0, v3}, Lcom/subao/common/e/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 153
    goto :goto_0

    :cond_8
    move-object v0, v2

    .line 162
    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/subao/common/e/c;->d:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/subao/common/e/c;->c:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 74
    :cond_0
    return v0

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/e/b;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/subao/common/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/e/b;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "com.valvesoftware.android.steam.community"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, v0, Lcom/subao/common/e/b;->c:I

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Lcom/subao/common/e/b;->a(I)Lcom/subao/common/e/b;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 172
    sget-object v2, Lcom/subao/common/e/c;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 173
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const/4 v0, 0x1

    .line 177
    :cond_0
    return v0

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
