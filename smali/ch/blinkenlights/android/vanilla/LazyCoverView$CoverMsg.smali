.class Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;
.super Ljava/lang/Object;
.source "LazyCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/LazyCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverMsg"
.end annotation


# instance fields
.field public key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

.field public title:Ljava/lang/String;

.field public view:Lch/blinkenlights/android/vanilla/LazyCoverView;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Lch/blinkenlights/android/vanilla/LazyCoverView;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    .line 80
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->view:Lch/blinkenlights/android/vanilla/LazyCoverView;

    .line 81
    iput-object p3, p0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isRecent()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->view:Lch/blinkenlights/android/vanilla/LazyCoverView;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/LazyCoverView;->access$000(Lch/blinkenlights/android/vanilla/LazyCoverView;)Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
