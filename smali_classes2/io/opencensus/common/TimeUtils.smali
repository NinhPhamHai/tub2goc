.class final Lio/opencensus/common/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final MAX_LONG_VALUE:Ljava/math/BigInteger;

.field private static final MIN_LONG_VALUE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/opencensus/common/TimeUtils;->MAX_LONG_VALUE:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 46
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/opencensus/common/TimeUtils;->MIN_LONG_VALUE:Ljava/math/BigInteger;

    return-void
.end method

.method static compareLongs(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
