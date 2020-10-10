.class public Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;
.super Ljava/lang/Object;
.source "CoverCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/CoverCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverKey"
.end annotation


# instance fields
.field public final coverSize:I

.field public final mediaId:J

.field public final mediaType:I


# direct methods
.method constructor <init>(IJI)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    .line 163
    iput-wide p2, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    .line 164
    iput p4, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->coverSize:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 169
    instance-of v0, p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    check-cast p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    iget v1, p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->coverSize:I

    iget p1, p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->coverSize:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 180
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    long-to-int v1, v0

    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr v1, v0

    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->coverSize:I

    const v2, 0x186a0

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverKey_i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->coverSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
