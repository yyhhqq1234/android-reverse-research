.class public final Lcom/tencent/tp/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static bail_dlg_body:I

.field public static bail_dlg_title:I

.field public static bail_html_content_bg:I

.field public static btn_cancel:I

.field public static btn_cancel_pressed:I

.field public static btn_ok:I

.field public static btn_ok_pressed:I

.field public static ic_launcher:I

.field public static pao:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f020000

    sput v0, Lcom/tencent/tp/f$c;->bail_dlg_body:I

    const v0, 0x7f020001

    sput v0, Lcom/tencent/tp/f$c;->bail_dlg_title:I

    const v0, 0x7f020002

    sput v0, Lcom/tencent/tp/f$c;->bail_html_content_bg:I

    const v0, 0x7f020003

    sput v0, Lcom/tencent/tp/f$c;->btn_cancel:I

    const v0, 0x7f020004

    sput v0, Lcom/tencent/tp/f$c;->btn_cancel_pressed:I

    const v0, 0x7f020005

    sput v0, Lcom/tencent/tp/f$c;->btn_ok:I

    const v0, 0x7f020006

    sput v0, Lcom/tencent/tp/f$c;->btn_ok_pressed:I

    const v0, 0x7f020007

    sput v0, Lcom/tencent/tp/f$c;->ic_launcher:I

    const v0, 0x7f020008

    sput v0, Lcom/tencent/tp/f$c;->pao:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
