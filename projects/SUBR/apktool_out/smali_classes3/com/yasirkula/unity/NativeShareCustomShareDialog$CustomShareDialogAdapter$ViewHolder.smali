.class Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NativeShareCustomShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final icon:Landroid/widget/ImageView;

.field private final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "icon"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 42
    iput-object p2, p0, Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;->label:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yasirkula/unity/NativeShareCustomShareDialog$CustomShareDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method
