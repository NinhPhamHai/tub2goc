.class public Lch/blinkenlights/android/vanilla/SongTimeline$FlagComparator;
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
    name = "FlagComparator"
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

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/vanilla/Song;)I
    .locals 0

    .line 313
    iget p1, p1, Lch/blinkenlights/android/vanilla/Song;->flags:I

    iget p2, p2, Lch/blinkenlights/android/vanilla/Song;->flags:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 309
    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    check-cast p2, Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/SongTimeline$FlagComparator;->compare(Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/vanilla/Song;)I

    move-result p1

    return p1
.end method
