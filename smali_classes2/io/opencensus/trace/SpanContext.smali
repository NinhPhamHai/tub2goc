.class public final Lio/opencensus/trace/SpanContext;
.super Ljava/lang/Object;
.source "SpanContext.java"


# static fields
.field public static final INVALID:Lio/opencensus/trace/SpanContext;

.field private static final TRACESTATE_DEFAULT:Lio/opencensus/trace/Tracestate;


# instance fields
.field private final spanId:Lio/opencensus/trace/SpanId;

.field private final traceId:Lio/opencensus/trace/TraceId;

.field private final traceOptions:Lio/opencensus/trace/TraceOptions;

.field private final tracestate:Lio/opencensus/trace/Tracestate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    invoke-static {}, Lio/opencensus/trace/Tracestate;->builder()Lio/opencensus/trace/Tracestate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/Tracestate$Builder;->build()Lio/opencensus/trace/Tracestate;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/SpanContext;->TRACESTATE_DEFAULT:Lio/opencensus/trace/Tracestate;

    .line 44
    new-instance v0, Lio/opencensus/trace/SpanContext;

    sget-object v1, Lio/opencensus/trace/TraceId;->INVALID:Lio/opencensus/trace/TraceId;

    sget-object v2, Lio/opencensus/trace/SpanId;->INVALID:Lio/opencensus/trace/SpanId;

    sget-object v3, Lio/opencensus/trace/TraceOptions;->DEFAULT:Lio/opencensus/trace/TraceOptions;

    sget-object v4, Lio/opencensus/trace/SpanContext;->TRACESTATE_DEFAULT:Lio/opencensus/trace/Tracestate;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/opencensus/trace/SpanContext;-><init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)V

    sput-object v0, Lio/opencensus/trace/SpanContext;->INVALID:Lio/opencensus/trace/SpanContext;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lio/opencensus/trace/SpanContext;->traceId:Lio/opencensus/trace/TraceId;

    .line 161
    iput-object p2, p0, Lio/opencensus/trace/SpanContext;->spanId:Lio/opencensus/trace/SpanId;

    .line 162
    iput-object p3, p0, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    .line 163
    iput-object p4, p0, Lio/opencensus/trace/SpanContext;->tracestate:Lio/opencensus/trace/Tracestate;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/SpanContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 136
    :cond_1
    check-cast p1, Lio/opencensus/trace/SpanContext;

    .line 137
    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceId:Lio/opencensus/trace/TraceId;

    iget-object v3, p1, Lio/opencensus/trace/SpanContext;->traceId:Lio/opencensus/trace/TraceId;

    invoke-virtual {v1, v3}, Lio/opencensus/trace/TraceId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->spanId:Lio/opencensus/trace/SpanId;

    iget-object v3, p1, Lio/opencensus/trace/SpanContext;->spanId:Lio/opencensus/trace/SpanId;

    .line 138
    invoke-virtual {v1, v3}, Lio/opencensus/trace/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    iget-object p1, p1, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    .line 139
    invoke-virtual {v1, p1}, Lio/opencensus/trace/TraceOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTraceOptions()Lio/opencensus/trace/TraceOptions;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceId:Lio/opencensus/trace/TraceId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->spanId:Lio/opencensus/trace/SpanId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanContext{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceId:Lio/opencensus/trace/TraceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->spanId:Lio/opencensus/trace/SpanId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->traceOptions:Lio/opencensus/trace/TraceOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
