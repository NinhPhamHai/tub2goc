.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$0:I

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$0:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;->f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-static {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->lambda$loadFromCache$13(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lio/reactivex/MaybeSource;

    move-result-object v0

    return-object v0
.end method
