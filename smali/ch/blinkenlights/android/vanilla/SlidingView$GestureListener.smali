.class Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SlidingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/SlidingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/SlidingView;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/SlidingView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 384
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;->this$0:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-static {p1, p4}, Lch/blinkenlights/android/vanilla/SlidingView;->access$002(Lch/blinkenlights/android/vanilla/SlidingView;F)F

    const/4 p1, 0x1

    return p1
.end method
