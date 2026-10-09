.class public final enum Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;
.super Ljava/lang/Enum;
.source "eShareFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

.field public static final enum Share_From_Game:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

.field public static final enum Share_From_Html_Page:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

.field public static final enum Share_From_WebView_Button:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    const-string v1, "Share_From_Game"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Game:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    .line 9
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    const-string v1, "Share_From_Html_Page"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Html_Page:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    .line 10
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    const-string v1, "Share_From_WebView_Button"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_WebView_Button:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    sget-object v1, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Game:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Html_Page:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_WebView_Button:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->$VALUES:[Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->value:I

    .line 15
    iput p3, p0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->value:I

    .line 16
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "from":Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;
    packed-switch p0, :pswitch_data_0

    .line 31
    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Game:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Html_Page:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_WebView_Button:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->$VALUES:[Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    invoke-virtual {v0}, [Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->value:I

    return v0
.end method
