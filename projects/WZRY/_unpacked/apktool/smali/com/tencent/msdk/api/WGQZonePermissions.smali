.class public Lcom/tencent/msdk/api/WGQZonePermissions;
.super Ljava/lang/Object;
.source "WGQZonePermissions.java"


# static fields
.field private static final QzPmsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final eOPEN_ALL:I = 0xffffff

.field public static final eOPEN_NONE:I = 0x0

.field public static final eOPEN_PERMISSION_ADD_ALBUM:I = 0x8

.field public static final eOPEN_PERMISSION_ADD_IDOL:I = 0x10

.field public static final eOPEN_PERMISSION_ADD_ONE_BLOG:I = 0x20

.field public static final eOPEN_PERMISSION_ADD_PIC_T:I = 0x40

.field public static final eOPEN_PERMISSION_ADD_SHARE:I = 0x80

.field public static final eOPEN_PERMISSION_ADD_TOPIC:I = 0x100

.field public static final eOPEN_PERMISSION_CHECK_PAGE_FANS:I = 0x200

.field public static final eOPEN_PERMISSION_DEL_IDOL:I = 0x400

.field public static final eOPEN_PERMISSION_DEL_T:I = 0x800

.field public static final eOPEN_PERMISSION_GET_APP_FRIENDS:I = 0x800000

.field public static final eOPEN_PERMISSION_GET_FANSLIST:I = 0x1000

.field public static final eOPEN_PERMISSION_GET_IDOLLIST:I = 0x2000

.field public static final eOPEN_PERMISSION_GET_INFO:I = 0x4000

.field public static final eOPEN_PERMISSION_GET_INTIMATE_FRIENDS_WEIBO:I = 0x200000

.field public static final eOPEN_PERMISSION_GET_OTHER_INFO:I = 0x8000

.field public static final eOPEN_PERMISSION_GET_REPOST_LIST:I = 0x10000

.field public static final eOPEN_PERMISSION_GET_SIMPLE_USER_INFO:I = 0x4

.field public static final eOPEN_PERMISSION_GET_USER_INFO:I = 0x2

.field public static final eOPEN_PERMISSION_GET_VIP_INFO:I = 0x80000

.field public static final eOPEN_PERMISSION_GET_VIP_RICH_INFO:I = 0x100000

.field public static final eOPEN_PERMISSION_LIST_ALBUM:I = 0x20000

.field public static final eOPEN_PERMISSION_MATCH_NICK_TIPS_WEIBO:I = 0x400000

.field public static final eOPEN_PERMISSION_UPLOAD_PIC:I = 0x40000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    .line 41
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "get_user_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "get_simple_userinfo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "add_album"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "add_idol"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "add_one_blog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "add_pic_t"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x80

    const-string v2, "add_share"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x100

    const-string v2, "add_topic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x200

    const-string v2, "check_page_fans"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x400

    const-string v2, "del_idol"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x800

    const-string v2, "del_t"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x1000

    const-string v2, "get_fanslist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x2000

    const-string v2, "get_idollist"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/16 v1, 0x4000

    const-string v2, "get_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const v1, 0x8000

    const-string v2, "get_other_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/high16 v1, 0x10000

    const-string v2, "get_repost_list"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/high16 v1, 0x20000

    const-string v2, "list_album"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/high16 v1, 0x40000

    const-string/jumbo v2, "upload_pic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/high16 v1, 0x200000

    const-string v2, "get_intimate_friends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    const/high16 v1, 0x800000

    const-string v2, "get_app_friends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionStr(I)[Ljava/lang/String;
    .locals 8
    .param p0, "permissions"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 71
    const v4, 0xffffff

    if-ne p0, v4, :cond_0

    .line 72
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "all"

    aput-object v5, v4, v6

    .line 86
    :goto_0
    return-object v4

    .line 73
    :cond_0
    if-nez p0, :cond_1

    .line 74
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "none"

    aput-object v5, v4, v6

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "pmss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 78
    sget-object v4, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 79
    .local v1, "key":I
    and-int v4, p0, v1

    if-eqz v4, :cond_2

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lcom/tencent/msdk/api/WGQZonePermissions;->QzPmsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v1    # "key":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 86
    .local v3, "ps":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method
