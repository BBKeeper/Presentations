/* Copyright (c) 2013 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.0

// This is the info page with some information about the application and a bit of decorations.

NavigationPane {
    id: navigation
    
    Page {
        
        Container {
            background: backgroundPaint.imagePaint
            
            attachedObjects: [
                ImagePaintDefinition {
                    id: backgroundPaint
                    imageSource: "asset:///images/info/background.png"
                }
            ]
            
            layout: DockLayout {
            }
            
            // Cloud image
            Container {
                id: cloud
                leftPadding: 40
                bottomPadding: 40
                verticalAlignment: VerticalAlignment.Bottom
                horizontalAlignment: HorizontalAlignment.Left
                
                ImageView {
                    imageSource: "asset:///images/info/cloud.png"
                }
            }
            // Sun image and descriptive text
            Container {
                horizontalAlignment: HorizontalAlignment.Fill
                leftPadding: 40
                rightPadding: 40
                topPadding: 40
                
                layout: StackLayout {
                    orientation: LayoutOrientation.RightToLeft
                }
            
                // Sun image (right)
                Container {
                    ImageView {
                        imageSource: "asset:///images/info/sun.png"
                    }
                }
                // Descriptive Text
                Container {                    
                    TextArea {
                        text: qsTr("Welcome to the weather history. This little app shows you the recorded weather data from cities across the world.") + Retranslate.onLanguageChanged
                        enabled: false
                        editable: false               
                        textStyle.base: SystemDefaults.TextStyles.TitleText
                        textStyle.fontStyle: FontStyle.Italic
                    }
                }
            }
            // Footer information
            Container {
                rightPadding: 10
                bottomPadding: 10
                verticalAlignment: VerticalAlignment.Bottom
                horizontalAlignment: HorizontalAlignment.Right
                
                Label {
                    text: qsTr("Cascades sample app 2013.") + Retranslate.onLanguageChanged
                    textStyle.base: SystemDefaults.TextStyles.SmallText
                }
            }
        }
    }
}
