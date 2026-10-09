.class public final Lcom/netease/mobile/link/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final b:Lcom/netease/mobile/link/widget/editor/a;

.field public c:Lcom/netease/mobile/link/o0$a$a;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/widget/editor/ExpandEditText;Lcom/netease/mobile/link/widget/editor/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mobile/link/o0$a;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/netease/mobile/link/o0$a;->b:Lcom/netease/mobile/link/widget/editor/a;

    new-instance p1, Lcom/netease/mobile/link/o0$a$a;

    invoke-direct {p1, p2}, Lcom/netease/mobile/link/o0$a$a;-><init>(Lcom/netease/mobile/link/widget/editor/a;)V

    iput-object p1, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    :try_start_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/o0$a;->b:Lcom/netease/mobile/link/widget/editor/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netease/mobile/link/o0$a;->c:Lcom/netease/mobile/link/o0$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/o0$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/netease/mobile/link/widget/editor/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/o0$a;->b:Lcom/netease/mobile/link/widget/editor/a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
