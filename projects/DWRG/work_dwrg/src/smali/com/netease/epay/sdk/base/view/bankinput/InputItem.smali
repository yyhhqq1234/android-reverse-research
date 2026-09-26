.class public Lcom/netease/epay/sdk/base/view/bankinput/InputItem;
.super Ljava/lang/Object;
.source "InputItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/bankinput/InputItem$InputType;
    }
.end annotation


# static fields
.field public static final INPUT_CARD_NUM:I = 0x1

.field public static final INPUT_CARD_TYPE:I = 0x3

.field public static final INPUT_EFFECTIVE_DATE:I = 0x6

.field public static final INPUT_ID_CARD:I = 0x2

.field public static final INPUT_NAME:I = 0x4

.field public static final INPUT_OIL:I = 0x7

.field public static final INPUT_PHONE:I = 0x0

.field public static final INPUT_SAFE_CODE:I = 0x5


# instance fields
.field public cacheContent:Ljava/lang/String;

.field public canEdit:Z

.field contentType:I

.field public hasTip:Z

.field public hint:Ljava/lang/String;

.field public hintTextColor:I

.field public inputColor:I

.field public inputMaxLength:I

.field itemType:I

.field public leftKey:Ljava/lang/String;

.field public listener:Landroid/view/View$OnClickListener;

.field public textInputType:I

.field tipType:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "itemType"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    .line 49
    iput p1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    .line 50
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    if-ne v0, v3, :cond_3

    .line 91
    :cond_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->contentType:I

    .line 95
    :goto_1
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 96
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->tipType:I

    .line 97
    iput-boolean v2, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hasTip:Z

    .line 99
    :cond_2
    return-void

    .line 56
    :pswitch_0
    const-string v0, "\u624b\u673a\u53f7"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 57
    const-string v0, "\u8bf7\u8f93\u5165\u94f6\u884c\u9884\u7559\u624b\u673a\u53f7\u7801"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "\u5361\u53f7"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 61
    const-string v0, "\u8bf7\u8f93\u5165\u94f6\u884c\u5361\u53f7"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "\u8eab\u4efd\u8bc1"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 65
    const-string v0, "\u8bf7\u8f93\u5165\u6301\u5361\u4eba\u5bf9\u5e94\u8eab\u4efd\u8bc1\u53f7"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "\u5361\u7c7b\u578b"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 69
    const-string v0, "\u8bf7\u9009\u62e9\u94f6\u884c\u5361"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 70
    const-string v0, "#6faae9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputColor:I

    .line 71
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    .line 72
    iget v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputColor:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hintTextColor:I

    goto :goto_0

    .line 75
    :pswitch_4
    const-string v0, "\u6301\u5361\u4eba"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 76
    const-string v0, "\u8bf7\u8f93\u5165\u94f6\u884c\u5361\u6237\u540d"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_5
    const-string v0, "\u5b89\u5168\u7801"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 80
    const-string v0, "\u8bf7\u8f93\u5165\u5361\u80cc\u97623\u4f4d\u6570\u5b57"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 81
    iput v4, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->inputMaxLength:I

    .line 82
    iput v3, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->textInputType:I

    goto :goto_0

    .line 85
    :pswitch_6
    const-string v0, "\u6709\u6548\u671f"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->leftKey:Ljava/lang/String;

    .line 86
    const-string v0, "\u6708\u4efd/\u5e74\u4efd (MM/YY)"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->canEdit:Z

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->contentType:I

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
