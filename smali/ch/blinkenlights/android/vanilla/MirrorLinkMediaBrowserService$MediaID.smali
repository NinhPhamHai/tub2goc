.class Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;
.super Ljava/lang/Object;
.source "MirrorLinkMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaID"
.end annotation


# static fields
.field public static final ID_TYPE_ROOT:Ljava/lang/String;


# instance fields
.field final mId:J

.field final mLabel:Ljava/lang/String;

.field final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->ID_TYPE_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v4, "/"

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 230
    array-length v4, p1

    const/4 v5, 0x0

    if-lez v4, :cond_0

    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    :cond_0
    array-length v4, p1

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 232
    aget-object p1, p1, v6

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 233
    array-length v4, p1

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1

    .line 234
    aget-object v3, p1, v6

    .line 235
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 239
    :cond_1
    iput v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    .line 240
    iput-wide v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    .line 241
    iput-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static toString(IJLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isInvalid()Z
    .locals 2

    .line 249
    iget v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopAdapter()Z
    .locals 5

    .line 245
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 254
    iget v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->toString(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
