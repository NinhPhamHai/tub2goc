.class public abstract Lorg/schabi/newpipe/extractor/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    }
.end annotation


# instance fields
.field private final infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field private final name:Ljava/lang/String;

.field private final serviceId:I

.field private thumbnailUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 34
    iput p2, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    .line 35
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[url=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
