.class Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Step"
.end annotation


# instance fields
.field arg:Ljava/lang/Object;

.field mode:I

.field msg:I

.field final synthetic this$1:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;ILjava/lang/Object;I)V
    .locals 0

    .line 704
    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->this$1:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->msg:I

    .line 706
    iput-object p3, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->arg:Ljava/lang/Object;

    .line 707
    iput p4, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->mode:I

    return-void
.end method
