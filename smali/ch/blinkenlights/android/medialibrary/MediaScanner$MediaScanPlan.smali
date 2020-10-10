.class Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/medialibrary/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaScanPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;,
        Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;
    }
.end annotation


# instance fields
.field private mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

.field private mSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lch/blinkenlights/android/medialibrary/MediaScanner;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/medialibrary/MediaScanner;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->this$0:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    .line 733
    new-instance p1, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    invoke-direct {p1, p0}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;-><init>(Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;)V

    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    return-void
.end method


# virtual methods
.method addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;
    .locals 3

    .line 769
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;-><init>(Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;ILjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method clear()V
    .locals 1

    .line 758
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 759
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    invoke-virtual {v0}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->reset()V

    return-void
.end method

.method getNextStep()Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;
    .locals 4

    .line 803
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 805
    iget v2, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    iget v2, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    if-eqz v2, :cond_1

    .line 807
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v0, v1

    .line 809
    :cond_1
    iget v2, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    iget v2, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    if-nez v2, :cond_2

    .line 811
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v0, v1

    .line 814
    :cond_2
    iget-object v1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    invoke-virtual {v1}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->reset()V

    return-object v0
.end method

.method getStatistics()Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;
    .locals 1

    .line 737
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    return-object v0
.end method

.method registerProgress(Ljava/lang/String;Z)V
    .locals 1

    .line 747
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->mStats:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    iput-object p1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->lastFile:Ljava/lang/String;

    .line 748
    iget p1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->seen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->seen:I

    if-eqz p2, :cond_0

    .line 750
    iget p1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    :cond_0
    return-void
.end method
