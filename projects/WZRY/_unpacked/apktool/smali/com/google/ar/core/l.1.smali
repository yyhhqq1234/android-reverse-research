.class final Lcom/google/ar/core/l;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final synthetic a:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/l;->a:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/l;->a:Lcom/google/ar/core/InstallActivity;

    invoke-static {v0}, Lcom/google/ar/core/InstallActivity;->access$300(Lcom/google/ar/core/InstallActivity;)V

    return-void
.end method
