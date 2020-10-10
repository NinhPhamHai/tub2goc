.class public Lch/blinkenlights/android/vanilla/SongTimeline$IdComparator;
.super Ljava/lang/Object;
.source "SongTimeline.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/SongTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lch/blinkenlights/android/vanilla/Song;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/vanilla/Song;)I
    .locals 3

    .line 298
    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    iget-wide p1, p2, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 294
    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    check-cast p2, Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/SongTimeline$IdComparator;->compare(Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/vanilla/Song;)I

    move-result p1

    return p1
.end method
