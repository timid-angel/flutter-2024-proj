import { Prop, Schema, SchemaFactory } from "@nestjs/mongoose";
import { Document } from "mongoose";

@Schema()

export class Artist extends Document {
    @Prop()
    name: string

    @Prop()
    songs: Array<String>
}

export const ArtistSchema = SchemaFactory.createForClass(Artist)