.class public Lch/blinkenlights/android/vanilla/ext/CoordClickListener;
.super Ljava/lang/Object;
.source "CoordClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;

.field private mPosX:F

.field private mPosY:F


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mCallback:Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mCallback:Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;

    iget v6, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mPosX:F

    iget v7, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mPosY:F

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;->onItemLongClickWithCoords(Landroid/widget/AdapterView;Landroid/view/View;IJFF)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mPosX:F

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->mPosY:F

    const/4 p1, 0x0

    return p1
.end method

.method public registerForOnItemLongClickListener(Landroid/widget/ListView;)V
    .locals 0

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
