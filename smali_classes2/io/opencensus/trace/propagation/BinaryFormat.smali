.class public abstract Lio/opencensus/trace/propagation/BinaryFormat;
.super Ljava/lang/Object;
.source "BinaryFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;
    }
.end annotation


# static fields
.field static final NOOP_BINARY_FORMAT:Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;-><init>(Lio/opencensus/trace/propagation/BinaryFormat$1;)V

    sput-object v0, Lio/opencensus/trace/propagation/BinaryFormat;->NOOP_BINARY_FORMAT:Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNoopBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;
    .locals 1

    .line 138
    sget-object v0, Lio/opencensus/trace/propagation/BinaryFormat;->NOOP_BINARY_FORMAT:Lio/opencensus/trace/propagation/BinaryFormat$NoopBinaryFormat;

    return-object v0
.end method


# virtual methods
.method public abstract fromByteArray([B)Lio/opencensus/trace/SpanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/opencensus/trace/propagation/SpanContextParseException;
        }
    .end annotation
.end method

.method public abstract toByteArray(Lio/opencensus/trace/SpanContext;)[B
.end method
