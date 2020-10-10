.class Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/SlidingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/SlidingView;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/SlidingView;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 392
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    iget v0, p1, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/SlidingView;->access$100(Lch/blinkenlights/android/vanilla/SlidingView;I)V

    .line 393
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->access$200(Lch/blinkenlights/android/vanilla/SlidingView;)Lch/blinkenlights/android/vanilla/SlidingView$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 395
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    iget v1, v0, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    .line 396
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->access$300(Lch/blinkenlights/android/vanilla/SlidingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->access$200(Lch/blinkenlights/android/vanilla/SlidingView;)Lch/blinkenlights/android/vanilla/SlidingView$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/blinkenlights/android/vanilla/SlidingView$Callback;->onSlideExpansionChanged(I)V

    :cond_2
    return-void
.end method
