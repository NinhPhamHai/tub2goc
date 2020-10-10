.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$0:I

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$0:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;->f$2:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    invoke-static {v0, v1, v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->lambda$checkCache$12(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method
