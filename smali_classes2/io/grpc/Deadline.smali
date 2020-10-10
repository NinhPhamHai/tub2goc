.class public final Lio/grpc/Deadline;
.super Ljava/lang/Object;
.source "Deadline.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Deadline$SystemTicker;,
        Lio/grpc/Deadline$Ticker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/grpc/Deadline;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_OFFSET:J

.field private static final MIN_OFFSET:J

.field private static final NANOS_PER_SECOND:J

.field private static final SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;


# instance fields
.field private final deadlineNanos:J

.field private volatile expired:Z

.field private final ticker:Lio/grpc/Deadline$Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lio/grpc/Deadline$SystemTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Deadline$SystemTicker;-><init>(Lio/grpc/Deadline$1;)V

    sput-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x8e94

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    .line 38
    sget-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    neg-long v0, v0

    sput-wide v0, Lio/grpc/Deadline;->MIN_OFFSET:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/Deadline;->NANOS_PER_SECOND:J

    return-void
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JJZ)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    .line 69
    sget-wide v0, Lio/grpc/Deadline;->MAX_OFFSET:J

    sget-wide v2, Lio/grpc/Deadline;->MIN_OFFSET:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    add-long/2addr p2, p4

    .line 70
    iput-wide p2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_0
    iput-boolean p1, p0, Lio/grpc/Deadline;->expired:Z

    return-void
.end method

.method private constructor <init>(Lio/grpc/Deadline$Ticker;JZ)V
    .locals 7

    .line 62
    invoke-virtual {p1}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JJZ)V

    return-void
.end method

.method public static after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;
    .locals 1

    .line 48
    sget-object v0, Lio/grpc/Deadline;->SYSTEM_TICKER:Lio/grpc/Deadline$SystemTicker;

    invoke-static {p0, p1, p2, v0}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;

    move-result-object p0

    return-object p0
.end method

.method static after(JLjava/util/concurrent/TimeUnit;Lio/grpc/Deadline$Ticker;)Lio/grpc/Deadline;
    .locals 1

    const-string v0, "units"

    .line 53
    invoke-static {p2, v0}, Lio/grpc/Deadline;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lio/grpc/Deadline;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p3, p0, p1, p2}, Lio/grpc/Deadline;-><init>(Lio/grpc/Deadline$Ticker;JZ)V

    return-object v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lio/grpc/Deadline;)I
    .locals 4

    .line 167
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lio/grpc/Deadline;

    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result p1

    return p1
.end method

.method public isBefore(Lio/grpc/Deadline;)Z
    .locals 4

    .line 94
    iget-wide v0, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-wide v2, p1, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isExpired()Z
    .locals 6

    .line 79
    iget-boolean v0, p0, Lio/grpc/Deadline;->expired:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 80
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v0}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lio/grpc/Deadline;->expired:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public timeRemaining(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .line 127
    iget-object v0, p0, Lio/grpc/Deadline;->ticker:Lio/grpc/Deadline$Ticker;

    invoke-virtual {v0}, Lio/grpc/Deadline$Ticker;->read()J

    move-result-wide v0

    .line 128
    iget-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    .line 129
    iput-boolean v2, p0, Lio/grpc/Deadline;->expired:Z

    .line 131
    :cond_0
    iget-wide v2, p0, Lio/grpc/Deadline;->deadlineNanos:J

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 148
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lio/grpc/Deadline;->NANOS_PER_SECOND:J

    div-long/2addr v2, v4

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lio/grpc/Deadline;->NANOS_PER_SECOND:J

    rem-long/2addr v4, v6

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-gez v9, :cond_0

    const/16 v0, 0x2d

    .line 154
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v0, v4, v7

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ".%09d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "s from now"

    .line 160
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
