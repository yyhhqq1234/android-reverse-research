.class public Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;
.super Landroid/app/DialogFragment;
.source "NativeFilePickerPickResultFragment.java"


# static fields
.field public static progressBarLabel:Ljava/lang/String; = "Please wait..."

.field public static uiUpdateInterval:I = 0x64


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private final progressBarUpdateTask:Ljava/lang/Runnable;

.field private final resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

.field private final uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;-><init>(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultOperation"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;-><init>(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    return-void
.end method

.method static synthetic access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->setRetainInstance(Z)V

    .line 78
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$2;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$2;-><init>(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 92
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 93
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x1e

    .line 97
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 103
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x432f0000    # 175.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010078

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 106
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 107
    iget-object v3, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 108
    iget-object v3, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    sget-object p1, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 112
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    sget-object v1, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;-><init>(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)V

    const/high16 v1, 0x1040000

    .line 127
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->sendResultToUnity()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 158
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 166
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 167
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->sendResultToUnity()V

    return-void
.end method
