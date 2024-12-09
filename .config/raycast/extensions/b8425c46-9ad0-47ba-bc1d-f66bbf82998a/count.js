"use strict";var u=Object.defineProperty;var C=Object.getOwnPropertyDescriptor;var T=Object.getOwnPropertyNames;var S=Object.prototype.hasOwnProperty;var y=(t,o)=>{for(var e in o)u(t,e,{get:o[e],enumerable:!0})},b=(t,o,e,c)=>{if(o&&typeof o=="object"||typeof o=="function")for(let r of T(o))!S.call(t,r)&&r!==e&&u(t,r,{get:()=>o[r],enumerable:!(c=C(o,r))||c.enumerable});return t};var A=t=>b(u({},"__esModule",{value:!0}),t);var k={};y(k,{default:()=>g});module.exports=A(k);var n=require("@raycast/api"),l=require("react");var m=t=>{let o=[],e=0,c=t.length;for(;e<c;){let r=t.charCodeAt(e++);if(r>=55296&&r<=56319&&e<c){let d=t.charCodeAt(e++);(d&64512)==56320?o.push(((r&1023)<<10)+(d&1023)+65536):(o.push(r),e--)}else o.push(r)}return o},p=(t,o)=>{let e=t.trim(),c=e?(e.replace(/['";:,.?¿\-!¡]+/g,"").match(/\S+/g)||[]).length:0;return{paragraphs:e?(e.match(/\n+/g)||[]).length+1:0,sentences:e?(e.match(/[.?!…]+./g)||[]).length+1:0,words:c,reading_time:Math.ceil(c/275),speaking_time:Math.ceil(c/180),characters:o?m(t).length:e?m(e.replace(/\s/g,"")).length:0}};var a=require("@raycast/api");async function h(){let t=await a.Clipboard.readText();return t?((0,a.showToast)({style:a.Toast.Style.Success,title:"Text loaded from clipboard",message:"[\u2318 + E] to reset"}),t.trim()):""}async function f(){try{let t=await(0,a.getSelectedText)();if(t)return(0,a.showToast)({style:a.Toast.Style.Success,title:"Text loaded from selected text",message:"[\u2318 + E] to reset"}),t.trim()}catch{}return""}var i=require("react/jsx-runtime");function g(){let[t,o]=(0,l.useState)(""),[e,c]=(0,l.useState)(!0),[r,d]=(0,l.useState)("");(0,l.useEffect)(()=>{(async()=>{let s=await f();s||(s=await h()),o(s)})()},[]),(0,l.useEffect)(()=>{let s=p(t,e),w=`${s.characters} characters \xB7 ${s.words} words 
${s.sentences} sentences \xB7 ${s.paragraphs} paragraphs 
${s.reading_time} minutes to read \xB7 ${s.speaking_time} minutes to speak`;d(w)},[t,e]);let x=(0,i.jsxs)(n.ActionPanel,{children:[(0,i.jsx)(n.Action,{title:"Toggle Whitespace",onAction:()=>c(!e),shortcut:{modifiers:["cmd"],key:"t"},icon:n.Icon.Switch}),(0,i.jsx)(n.Action,{title:"Clear Text",onAction:()=>o(""),shortcut:{modifiers:["cmd"],key:"e"},icon:n.Icon.Trash})]});return(0,i.jsxs)(n.Form,{actions:x,children:[(0,i.jsx)(n.Form.Description,{text:r}),(0,i.jsx)(n.Form.TextArea,{id:"text",title:"Text to Count",placeholder:"Start typing...",value:t,onChange:o}),(0,i.jsx)(n.Form.Checkbox,{id:"include-whitespace",title:"Options",label:"Include whitespace in character count",value:e,onChange:c})]})}
/**
 * Modified from implementation in @RadLikeWhoa/Countable
 * @source https://github.com/RadLikeWhoa/Countable
 * @license MIT
 */
