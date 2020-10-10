.class public final Lio/grpc/perfmark/PerfTag;
.super Ljava/lang/Object;
.source "PerfTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/perfmark/PerfTag$TagFactory;
    }
.end annotation


# static fields
.field private static final NULL_STRING_TAG:Ljava/lang/String;


# instance fields
.field private final numericTag:J

.field private final stringTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lio/grpc/perfmark/PerfTag;->numericTag:J

    .line 51
    iput-object p3, p0, Lio/grpc/perfmark/PerfTag;->stringTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lio/grpc/perfmark/PerfTag$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/perfmark/PerfTag;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lio/grpc/perfmark/PerfTag;->NULL_STRING_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 78
    instance-of v0, p1, Lio/grpc/perfmark/PerfTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    check-cast p1, Lio/grpc/perfmark/PerfTag;

    .line 82
    iget-wide v2, p0, Lio/grpc/perfmark/PerfTag;->numericTag:J

    iget-wide v4, p1, Lio/grpc/perfmark/PerfTag;->numericTag:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/grpc/perfmark/PerfTag;->stringTag:Ljava/lang/String;

    iget-object p1, p1, Lio/grpc/perfmark/PerfTag;->stringTag:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 71
    iget-wide v0, p0, Lio/grpc/perfmark/PerfTag;->numericTag:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    .line 72
    iget-object v0, p0, Lio/grpc/perfmark/PerfTag;->stringTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag(numericTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/grpc/perfmark/PerfTag;->numericTag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",stringTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/perfmark/PerfTag;->stringTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
