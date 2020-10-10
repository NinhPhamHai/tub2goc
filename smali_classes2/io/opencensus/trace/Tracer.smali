.class public abstract Lio/opencensus/trace/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Tracer$NoopTracer;
    }
.end annotation


# static fields
.field private static final noopTracer:Lio/opencensus/trace/Tracer$NoopTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lio/opencensus/trace/Tracer$NoopTracer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/Tracer$NoopTracer;-><init>(Lio/opencensus/trace/Tracer$1;)V

    sput-object v0, Lio/opencensus/trace/Tracer;->noopTracer:Lio/opencensus/trace/Tracer$NoopTracer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNoopTracer()Lio/opencensus/trace/Tracer;
    .locals 1

    .line 81
    sget-object v0, Lio/opencensus/trace/Tracer;->noopTracer:Lio/opencensus/trace/Tracer$NoopTracer;

    return-object v0
.end method


# virtual methods
.method public abstract spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;
.end method
