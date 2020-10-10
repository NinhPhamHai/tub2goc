.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;->f$0:I

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;->f$0:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->lambda$getStreamInfo$3(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method
