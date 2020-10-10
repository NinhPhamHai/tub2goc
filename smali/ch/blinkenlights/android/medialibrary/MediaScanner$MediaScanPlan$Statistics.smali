.class Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Statistics"
.end annotation


# instance fields
.field changed:I

.field lastFile:Ljava/lang/String;

.field seen:I

.field final synthetic this$1:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->this$1:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 713
    iput p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->seen:I

    .line 714
    iput p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 716
    iput v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->seen:I

    .line 717
    iput v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->lastFile:Ljava/lang/String;

    return-void
.end method
